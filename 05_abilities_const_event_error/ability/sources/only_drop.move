module ability::only_drop ;
use std::string::String;


public struct MyStruct {}


public struct OnlyDrop has drop {
    num: u8,
    nue: u16,
  //  my: MyStruct
}


fun init(ctx: &mut TxContext) {
    let only = OnlyDrop {
        num: 10,
        nue: 10,
     //   my:MyStruct{}
    };


    // let my = MyStruct{};

}



