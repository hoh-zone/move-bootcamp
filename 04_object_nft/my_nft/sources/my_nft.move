module my_nft::my_nft;
use std::string;
use std::string::String;
use sui::transfer::transfer;
use sui::tx_context::sender;

public struct MyNFT has key{
    id: UID,
    name: String,
    image_url: String,
}

fun init(ctx: &mut TxContext){
    let my_nft = MyNFT{
        id:object::new(ctx),
        name:string::utf8(b"UVD NFT"),
        image_url: string::utf8(b"https://img1.baidu.com/it/u=3625074787,874089659&fm=253&fmt=auto&app=120&f=JPEG?w=500&h=761")
    };
    transfer(my_nft,sender(ctx));
}


public entry fun mint(url:String, ctx: &mut TxContext){
    let my_nft = MyNFT{
        id:object::new(ctx),
        name:string::utf8(b"UVD NFT"),
        image_url: url
    };
    transfer(my_nft,sender(ctx));
}


