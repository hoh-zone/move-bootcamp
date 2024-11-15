module enums::enums;

use std::debug::print;
use std::string::{String,sub_string};

public enum Action has store {
        Stop,
        Pause { duration: u32 },
        MoveTo { x: u64, y: u64 },
}

public struct V has key {
    id: UID,
    action: Action
}


public struct Abc has key {
    id: UID,
    action: Action
}


public enum Action2 {
        Up,
        Down,
        Left,
        RIGTH,
}

fun handle(action:&Action2){
        match (action) {
            //     Action2::Down =>{
            //         print(&b"Down");
            //     },
            //     Action2::Up =>{
            //     print(&b"Down");
            // },
                Action2::RIGTH =>{
                print(&b"Down");
            },
                Action2::Left =>{
                print(&b"Down");
            },

            _ =>{

            }

        }

}






