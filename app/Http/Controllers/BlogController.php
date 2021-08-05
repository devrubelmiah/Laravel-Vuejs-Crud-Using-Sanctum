<?php
namespace App\Http\Controllers;
use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class BlogController extends Controller
{

    /**
     * Display a listing of the resource.
     * @return \Illuminate\Http\Response
     */

    public function index()
    {
        $posts = Blog::latest('id')->get();
        return response()->json(['data' => $posts], 200);
    }

    /**
     * Show the form for creating a new resource.
     * @return \Illuminate\Http\Response
     */

    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */

    public function store(Request $request)
    {
        $this->validate($request, [
            'title'         => 'required',
            'body'         => 'required',
        ]);
        $blog = Blog::create([
            'title' => $request->title,
            'slug' => Str::slug($request->title),
            'body' => $request->body,
        ]);

        if ($request->image) {
            $imageName = time() . '_' . uniqid() . '.' . $request->image->getClientOriginalExtension();
            $request->image->move(public_path('/images'), $imageName);
            $blog->image = '/images/' . $imageName;
            $blog->save();
        }
        return response()->json(['message' => 'Post is created successfully...'], 200);
    }

    /**
     * Display the specified resource.
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */

    public function show(Blog $blog)
    {
        return response()->json(['data' => $blog], 200);
    }

    /**
     * Show the form for editing the specified resource.
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */

    public function edit(Blog $blog)
    {
        return response()->json(['data' => $blog], 200);
    }

    /**
     * Update the specified resource in storage.
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */

    public function update(Request $request, Blog $blog)
    {
        $this->validate($request, [
            'title'         => 'required',
            'body'         => 'required',
        ]);
        $blog->update([
            'title' => $request->title,
            'slug' => Str::slug($request->title),
            'body' => $request->body,
        ]);

        if ($request->image) {
            if (isset($blog->image)) {
             unlink(public_path($blog->image));
            }
             $imageName = time() . '_' . uniqid() . '.' . $request->image->getClientOriginalExtension();
             $request->image->move(public_path('/images'), $imageName);
             $blog->image = '/images/' . $imageName;
             $blog->save();
         }
         return response()->json(['message' => 'Post is updated successfully....']);

    }

    /**
     * Remove the specified resource from storage.
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */

    public function destroy(Blog $blog)
    {
        if ($blog) {
            if (isset($blog->image)) {
                unlink(public_path($blog->image));
               }
            $blog->delete();
            return response()->json('Post is Deleted success', 200);
        }
    }


}
