import React, { useRef } from "react";
import {firestore} from "../firebase";
import {addDoc,collection} from "@firebase/firestore";

//form layout
export default function Blogform(){

    //Firestore reference creation
    const urlRef = useRef();
    const titleRef = useRef();
    const bodyRef = useRef();
    const categoryRef = useRef();
    const aurtherRef = useRef();
    const dateRef = useRef();

    //Create reference for collection
    const collectionRef = collection(firestore,"testCollection");
    //submit handler
    const handleSave = async(e) => {
        e.preventDefault();
        console.log(urlRef.current.value);

        //Add data to firestore
        let data= {
            url:urlRef.current.value,
            title:titleRef.current.value,
            body:bodyRef.current.value,
            category:categoryRef.current.value,
            aurther:aurtherRef.current.value,
            date:dateRef.current.value,
        };

        try {
            addDoc(collectionRef,data);
        alert("Url submited👌👌👌");   
        } catch (e) {
            console.log(e)
        }
    }
    return(
        <form className="form" onSubmit={handleSave}>
            <h1>Blog Register</h1>

            
            <label>URL</label>
            <input placeholder="Picture path"
            ref={urlRef}/>

            <label>Blog Title</label>
            <input placeholder="Blog Title"
            ref={titleRef}/>

            <label>Blog Body</label>
            <input placeholder="Blog Body"
            ref={bodyRef}/>

            <label>Blog Category</label>
            <input placeholder="Blog Category"
            ref={categoryRef}/>

            <label>Blog Aurther</label>
            <input placeholder="Blog Aurther"
            ref={aurtherRef}/>

            <label>Blog Date</label>
            <input placeholder="Blog Date"
            ref={dateRef}/>

            <button type="submit">Submit</button>

        </form>
    );
};

//exporting section