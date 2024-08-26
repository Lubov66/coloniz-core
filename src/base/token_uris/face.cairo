// let make the face of the profile svg  

mod face {

use core::traits::TryInto;
use karst::base::token_uris::color::karstColors;
    use karst::base::token_uris::skin::skin::{SkinColors, getSkinColor};
    use karst::base::utils::byte_array_extra::FeltTryIntoByteArray;

    #[derive(Drop)]
    enum FaceVariants {
        BUBBLEGUM, // 0
        GRIN_TONGUE, // 1
        GRIN, // 2
    LAUGH, // 3
    LOVE, // 4
    OOPS, // 5
    SLEEPY, // 6
    SMILE_TEETH, // 7
    SMILE, // 8
    SMIRK, // 9
    // TONGUE, // 10
    // WINK, // 11  
    // // Face2.sol
    // WOW_TONGUE, // 12
    // WOW, // 13
    // BABY, // 14
    // KAWAII, // 15
    // PIXIE, // 16
    // TODDLER, // 17
    // VAMP // 18
    }
    #[derive(Drop,Copy)]
    enum FaceColors {
        NORMAL,
        GOLD
    }
    pub fn faceSvgStart() {
        let mut svgStart: ByteArray =
            "<svg xmlns=\"http://www.w3.org/2000/svg\" width=\"210\" height=\"335\" fill=\"none\">";
            svgStart.append(@_getStyleTag(FaceColors::NORMAL, SkinColors::GOLD));
            svgStart.append(@getFacevariant(FaceVariants::SMILE_TEETH)); 
            println!("{:?}", svgStart); 
    }
    pub fn checkface() {
        println!("hello from the face ");
        faceSvgStart();
    }
    pub fn getFacevariant(faceVariant: FaceVariants) -> ByteArray {
        let mut decidedFace: ByteArray = Default::default();
        match faceVariant {
            FaceVariants::BUBBLEGUM => {
                decidedFace =
                    "<path class=\"faceFillColor\" fill-rule=\"evenodd\" d=\"M94.1 139c.7-.4 1-1.1.8-1.8-1.4-3.7-4.5-6.2-8-6.2-5 0-8.9 4.7-8.9 10.4s4 10.4 8.8 10.4c3.5 0 6.5-2.4 8-5.8.3-.7-.1-1.5-.8-1.8l-3.6-1.5c-1-.4-1-1.8 0-2.2l3.7-1.6Zm20.8 2.4c0-5.7 4-10.4 8.8-10.4 3.7 0 7 2.7 8.2 6.5.3.7-.1 1.4-.8 1.7l-3 1.3c-1 .4-1 1.8 0 2.2l2.9 1.2c.7.3 1 1 .8 1.8-1.4 3.6-4.5 6.1-8 6.1-5 0-8.9-4.7-8.9-10.4Z\" clip-rule=\"evenodd\"/><path class=\"faceFillColor\" fill-opacity=\".12\" d=\"M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z\"/><circle cx=\"105\" cy=\"161.581\" r=\"3.466\" class=\"faceFillColor\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"2.5\" d=\"M99 166s1.7 3.2 6 3.2 6-3.2 6-3.2m0-8.8s-1.7-3.2-6-3.2-6 3.2-6 3.2\"/><path fill=\"#FFCFEC\" fill-opacity=\".8\" class=\"faceStrokeColor\" stroke-width=\"2.75\" d=\"M94.3 144.7A32 32 0 0 0 34.5 161 32 32 0 0 0 94 178l2.3-3.8a310 310 0 0 1 4-6.6l3-4a3.4 3.4 0 0 0 0-4l-2.2-3.2a51 51 0 0 1-3.4-5.7l-.9-1.7c-.8-1.4-1.5-2.9-2.4-4.3Z\"/><circle cx=\"-1.289\" cy=\"11.289\" r=\"3.289\" fill=\"#fff\" fill-opacity=\".45\" transform=\"scale(-1 1) rotate(5 -1761 -904)\"/><path fill=\"#fff\" fill-opacity=\".45\" d=\"M87.3 150.8a4 4 0 0 1-7.4 3.4 14.7 14.7 0 0 0-7.3-8l-1.4-.8A2.5 2.5 0 0 1 70 142l.1-.3c.6-1.1 0-2.6-1.3-2.8-1.5-.2-2.8-.3-4.1-.2a1.5 1.5 0 0 1-.4-2.9 19.4 19.4 0 0 1 13.7 4c1 .5 1.8 1.2 2.8 2 2 1.8 3.7 4 4.7 5.7a34.4 34.4 0 0 1 1.6 3v.1h.1v.1\"/></svg>";
            },
            FaceVariants::GRIN_TONGUE => {
                decidedFace = "<path class=\"faceFillColor\" fill-opacity=\".12\" d=\"M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3.5\" d=\"M130.8 145.9s-2.1-4.2-7.4-4.5a8.8 8.8 0 0 0-7.8 3.7m-36.4.8s2.1-4.2 7.4-4.5a8.8 8.8 0 0 1 7.8 3.7\"/><path class=\"faceFillColor\" d=\"M105 172c-15 0-20.6-8-18.6-13.6 1.4-4.1 6-6.4 10.4-5a35 35 0 0 0 8.2 1.6c2.3 0 6.3-1 8.2-1.6 4.3-1.4 9 .9 10.4 5 2 5.5-3.6 13.6-18.6 13.6Z\"/><path class=\"faceStrokeColor\" fill=\"#FFDFE7\" stroke-width=\"2.75\" d=\"M98.7 161.4h1.3l1.7.4 1 .3.8.2 1.5.2 1.5-.2.9-.2.9-.3a21.3 21.3 0 0 1 1.8-.3l1.2-.1c2.2.3 3.6 1.3 4.4 2.6a8 8 0 0 1 .7 5.2 11.1 11.1 0 0 1-11.4 9.4 11.1 11.1 0 0 1-11.4-9.4c-.4-2-.1-3.8.7-5.2.8-1.3 2.2-2.3 4.4-2.6Z\"/><path fill=\"#F5C8D4\" d=\"M106 163.8v7a1 1 0 0 1-2 0v-7l1 .2 1-.2Z\"/></svg>";
                 },
            FaceVariants::GRIN => {
                decidedFace = "<path class=\"faceFillColor\" fill-opacity=\".12\" d=\"M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3\" d=\"M91 159s4.3 6 14 6 14-6 14-6\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2.5\" d=\"M89 159c.8-.4 1.5-1 2-2m30 2c-.8-.4-1.5-1-2-2\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3.5\" d=\"M130.8 145.9s-2.1-4.2-7.4-4.5a8.8 8.8 0 0 0-7.8 3.7m-36.4.8s2.1-4.2 7.4-4.5a8.8 8.8 0 0 1 7.8 3.7\"/></svg>" ; 
                },
                FaceVariants::LAUGH => {
                decidedFace = "<path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3.5\" d=\"M130.8 143.9s-2.1-4.2-7.4-4.5a8.8 8.8 0 0 0-7.8 3.7m-36.4.8s2.1-4.2 7.4-4.5a8.8 8.8 0 0 1 7.8 3.7\"/><path class=\"faceFillColor\" d=\"M91 157.3c0-4.3 2-6 14-6s14 1.7 14 6-6.3 9.5-14 9.5-14-5.2-14-9.5Z\"/><ellipse cx=\"105\" cy=\"161.607\" fill=\"#FFDFE7\" rx=\"11.15\" ry=\"3.626\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3.176\" d=\"M91 157c0-4.3 0-6 14-6s14 1.7 14 6c0 5.2-6.3 9.4-14 9.4s-14-4.2-14-9.4Z\"/><path fill=\"#E3F7FF\" d=\"M70.2 149.5c-2.5 1.1-5.6 1.3-7.6 3.3a5.5 5.5 0 1 0 7.8 7.8c2-2 2.2-5 3.3-7.6l1.4-3.3c.4-1-.6-2-1.6-1.6l-3.3 1.4Z\"/><path class=\"faceStrokeColor\" stroke-opacity=\".1\" stroke-width=\"2.5\" d=\"M61.7 151.9a6.8 6.8 0 1 0 9.6 9.6 10 10 0 0 0 2.3-4.1l.4-1.5.8-2.4 1.5-3.3c.8-2-1.2-4.1-3.3-3.2l-3.3 1.4-2.4.8-1.5.4a9.5 9.5 0 0 0-4 2.3Z\"/><path fill=\"#E3F7FF\" d=\"M139.8 149.5c2.5 1.1 5.6 1.3 7.6 3.3a5.5 5.5 0 1 1-7.8 7.8c-2-2-2.2-5-3.3-7.6l-1.4-3.3c-.4-1 .6-2 1.6-1.6l3.3 1.4Z\"/><path class=\"faceStrokeColor\" stroke-opacity=\".1\" stroke-width=\"2.5\" d=\"M148.3 151.9a6.8 6.8 0 0 1-9.6 9.6 10 10 0 0 1-2.3-4.1 50.4 50.4 0 0 1-.4-1.5l-.8-2.4-1.5-3.3c-.8-2 1.2-4.1 3.3-3.2l3.3 1.4 2.4.8 1.5.4c1.4.5 2.9 1.1 4 2.3Z\"/></svg>";
                },
                FaceVariants::LOVE => {
                    decidedFace = "<path class=\"faceFillColor\" d=\"M91 160.3c0-4.3 2-6 14-6s14 1.7 14 6-6.3 9.5-14 9.5-14-5.2-14-9.5Z\"/><ellipse cx=\"105\" cy=\"164.607\" fill=\"#FFDFE7\" rx=\"11.15\" ry=\"3.626\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3.176\" d=\"M91 160c0-4.3 0-6 14-6s14 1.7 14 6c0 5.2-6.3 9.4-14 9.4s-14-4.2-14-9.4Z\"/><path class=\"faceStrokeColor\" fill=\"#FF88A5\" stroke-width=\"3\" d=\"M94.2 130.8a7.7 7.7 0 0 0-2.7-1.3 7.6 7.6 0 0 0-5.8.7 7.7 7.7 0 0 0-2.2 1.9 7.7 7.7 0 0 0-2.7-1.3 7.6 7.6 0 0 0-3-.2 7.6 7.6 0 0 0-2.7.9 7.7 7.7 0 0 0-2.3 2 7.6 7.6 0 0 0-1 1.7 7.2 7.2 0 0 0-.5 1.9 7.3 7.3 0 0 0 1.4 5.5A7.3 7.3 0 0 0 74 144l9.3 7.1a3.5 3.5 0 0 0 4.9-.6l7.2-9.2a7.2 7.2 0 0 0 1.6-5.6 7.4 7.4 0 0 0-.5-1.8 7.8 7.8 0 0 0-1-1.7 7.3 7.3 0 0 0-1.4-1.5Zm43.3 2.6a7.6 7.6 0 0 0-5.1-2.8 7.6 7.6 0 0 0-3 .2 7.7 7.7 0 0 0-2.6 1.3 7.7 7.7 0 0 0-2.3-2 7.6 7.6 0 0 0-2.8-.8 7.6 7.6 0 0 0-3 .2 7.7 7.7 0 0 0-2.6 1.3 7.6 7.6 0 0 0-1.5 1.4 7.2 7.2 0 0 0-1 1.8 7.8 7.8 0 0 0-.4 1.9 7.8 7.8 0 0 0 .5 3.8 7.3 7.3 0 0 0 1 1.7l7.3 9.2a3.5 3.5 0 0 0 4.9.6l9.3-7.1a7.6 7.6 0 0 0 1.4-1.5 7.2 7.2 0 0 0 1-1.7 7.8 7.8 0 0 0 .4-1.9 7.4 7.4 0 0 0 0-2 7.8 7.8 0 0 0-.5-1.8 7.3 7.3 0 0 0-1-1.8Z\"/><path class=\"faceFillColor\" fill-opacity=\".12\" d=\"M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z\"/><path fill=\"#E3F7FF\" d=\"M54.9 135.7c1 2.7 3.1 5.1 3.1 8a5.7 5.7 0 0 1-11.3 0c0-2.9 2-5.3 3.1-8l1.4-3.4c.4-1 1.9-1 2.3 0l1.4 3.4Z\"/><path class=\"faceStrokeColor\" stroke-opacity=\".1\" stroke-width=\"2.5\" d=\"M52.4 150.6a7 7 0 0 0 6.9-7c0-1.7-.7-3.2-1.3-4.5a51 51 0 0 0-.8-1.5l-1.2-2.3-1.3-3.5a2.5 2.5 0 0 0-4.7 0l-1.3 3.5-1.2 2.3a51 51 0 0 0-.8 1.5c-.6 1.3-1.3 2.8-1.3 4.6a7 7 0 0 0 7 6.9Z\"/></svg>";
                },
                FaceVariants::OOPS => {
                    decidedFace = "<ellipse cx=\"86.917\" cy=\"142.271\" fill=\"#fff\" rx=\"9.917\" ry=\"10.271\"/><ellipse class=\"faceFillColor\" cx=\"86.917\" cy=\"142.272\" rx=\"6.43\" ry=\"6.66\"/><ellipse cx=\"123.083\" cy=\"142.271\" fill=\"#fff\" rx=\"9.917\" ry=\"10.271\"/><ellipse class=\"faceFillColor\" cx=\"123.083\" cy=\"142.272\" rx=\"6.43\" ry=\"6.66\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M96 158h18\"/><ellipse cx=\"9\" cy=\"7.271\" fill=\"#fff\" fill-opacity=\".45\" rx=\"9\" ry=\"7.271\" transform=\"matrix(-1 0 0 1 86 149)\"/><ellipse cx=\"9\" cy=\"7.271\" fill=\"#fff\" fill-opacity=\".45\" rx=\"9\" ry=\"7.271\" transform=\"matrix(-1 0 0 1 142 149)\"/></svg>";
                }, 
                FaceVariants::SLEEPY => {
                    decidedFace = "<ellipse cx=\"86.917\" cy=\"142.271\" fill=\"#fff\" rx=\"9.917\" ry=\"10.271\"/><ellipse class=\"faceFillColor\" cx=\"86.917\" cy=\"142.272\" rx=\"6.43\" ry=\"6.66\"/><ellipse cx=\"123.083\" cy=\"142.271\" fill=\"#fff\" rx=\"9.917\" ry=\"10.271\"/><ellipse class=\"faceFillColor\" cx=\"123.083\" cy=\"142.272\" rx=\"6.43\" ry=\"6.66\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M96 158h18\"/><ellipse cx=\"9\" cy=\"7.271\" fill=\"#fff\" fill-opacity=\".45\" rx=\"9\" ry=\"7.271\" transform=\"matrix(-1 0 0 1 86 149)\"/><ellipse cx=\"9\" cy=\"7.271\" fill=\"#fff\" fill-opacity=\".45\" rx=\"9\" ry=\"7.271\" transform=\"matrix(-1 0 0 1 142 149)\"/></svg>" ; 
                },
                FaceVariants::SMILE_TEETH => {
                    decidedFace = "<path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3.5\" d=\"M77.2 142s2.5-4.2 8.4-4.5c6-.4 8.9 3.5 8.9 3.5m38.3 1s-2.5-4.2-8.4-4.5c-6-.4-8.9 3.5-8.9 3.5\"/><ellipse cx=\"9\" cy=\"7.271\" fill=\"#fff\" fill-opacity=\".45\" rx=\"9\" ry=\"7.271\" transform=\"matrix(-1 0 0 1 80 145)\"/><ellipse cx=\"9\" cy=\"7.271\" fill=\"#fff\" fill-opacity=\".45\" rx=\"9\" ry=\"7.271\" transform=\"matrix(-1 0 0 1 148 145)\"/><path fill=\"#fff\" d=\"M105.2 150.4c-2.6 0-5.9-1.3-8.6-1.4-2.7 0-5.6.3-7.8 1.5-3.8 2-5.5 6-4.5 9.6.9 3.6 4.1 6.6 8 8.4 4 1.8 8 2.5 12.6 2.5\"/><path fill=\"#fff\" d=\"M105.2 150.4c2.8 0 5.5-1.3 8.2-1.4 2.7-.1 5.6.3 7.8 1.5 3.8 2 5.5 6 4.5 9.6-.9 3.6-4.1 6.6-8 8.4a31 31 0 0 1-12.8 2.5\"/><path class=\"faceFillColor\" d=\"M86.7 154.3a2 2 0 0 0-.4 1l.3.9c.2.3.3.7.3 1 0 .4-.1 1-.3 1.3l-.6 1c-.1.4-.2.8 0 1-.5-.3-.7-.9-.8-1.4-.2-.5-.3-1-.3-1.6 0-.6.1-1.2.4-1.8.4-.5.7-1.2 1.4-1.4Zm36.6 0c.1.2.4.6.4 1l-.3.9a2 2 0 0 0-.3 1c0 .4.1 1 .3 1.3l.6 1v1c.5-.3.7-.9.8-1.4.2-.5.3-1 .3-1.6a4 4 0 0 0-.5-1.8c-.3-.5-.6-1.2-1.3-1.4Z\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105.2 150.4c-2.6 0-5.9-1.3-8.6-1.4-2.7 0-5.6.3-7.8 1.5-3.8 2-5.5 6-4.5 9.6.9 3.6 4.1 6.6 8 8.4 4 1.8 8 2.5 12.6 2.5\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3\" d=\"M105.2 150.4c2.8 0 5.5-1.3 8.2-1.4 2.7-.1 5.6.3 7.8 1.5 3.8 2 5.5 6 4.5 9.6-.9 3.6-4.1 6.6-8 8.4a31 31 0 0 1-12.8 2.5\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"2\" d=\"m93 159 3 1 2.4.3a2 2 0 0 0 1.9-1l.1-.4c.3-.4.9-.3 1 .1l.4 2.8c.1.5.8.5.9 0v0a1.8 1.8 0 0 1 1.7-1.2h4.7\"/></svg>";
                },
                FaceVariants::SMILE => {
                    decidedFace = "<path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-width=\"3\" d=\"M91 159s4.3 6 14 6 14-6 14-6\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"2.5\" d=\"M89 159c.8-.4 1.5-1 2-2m30 2c-.8-.4-1.5-1-2-2\"/><path class=\"faceFillColor\" fill-rule=\"evenodd\" d=\"M94.1 139c.7-.4 1-1.1.8-1.8-1.4-3.7-4.5-6.2-8-6.2-5 0-8.9 4.7-8.9 10.4s4 10.4 8.8 10.4c3.5 0 6.5-2.4 8-5.8.3-.7-.1-1.5-.8-1.8l-3.6-1.5c-1-.4-1-1.8 0-2.2l3.7-1.6Zm20.8 2.4c0-5.7 4-10.4 8.8-10.4 3.7 0 7 2.7 8.2 6.5.3.7-.1 1.4-.8 1.7l-3 1.3c-1 .4-1 1.8 0 2.2l2.9 1.2c.7.3 1 1 .8 1.8-1.4 3.6-4.5 6.1-8 6.1-5 0-8.9-4.7-8.9-10.4Z\" clip-rule=\"evenodd\"/><path class=\"faceFillColor\" fill-opacity=\".12\" d=\"M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z\"/></svg>";
                },
                FaceVariants::SMIRK => {
                    decidedFace = "<path class=\"faceFillColor\" fill-opacity=\".12\" d=\"M74.7 154.2a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm5.1 3a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.4Zm-4.5 1.9a1.5 1.5 0 1 1-2.5-1.5 1.5 1.5 0 0 1 2.5 1.5Zm55.4-3.4a1.5 1.5 0 1 1-2.5 1.4 1.5 1.5 0 0 1 2.5-1.4Zm5.1-3a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Zm-.6 4.9a1.5 1.5 0 1 1-2.5 1.5 1.5 1.5 0 0 1 2.5-1.5Z\"/><path fill=\"#fff\" d=\"M73.9 139.8a11.7 11.7 0 0 0 0 1.1c0 5.6 4 11.2 10.2 11.2 6.3 0 10.4-5.6 10.4-11.2v-1.1H73.8Z\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3.5\" d=\"M73 140.7s4.7-.9 11.1-.9c6.4 0 11.2.9 11.2.9\"/><path class=\"faceFillColor\" d=\"M77.7 139.5a9.8 9.8 0 0 0 0 .8c0 4 2.5 8.1 6.4 8.1 4 0 6.5-4 6.5-8v-1h-13Z\"/><path fill=\"#fff\" d=\"M135.8 139.8v1.1c0 5.6-4 11.2-10.3 11.2-6.2 0-10.3-5.6-10.3-11.2v-1.1h20.6Z\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3.5\" d=\"M136.6 140.7s-4.7-.9-11-.9c-6.5 0-11.2.9-11.2.9\"/><path class=\"faceFillColor\" d=\"M132 139.5v.8c0 4-2.6 8.1-6.5 8.1s-6.4-4-6.4-8v-1H132Z\"/><path class=\"faceStrokeColor\" stroke-linecap=\"round\" stroke-linejoin=\"round\" stroke-width=\"3.156\" d=\"M90 160a31.3 31.3 0 0 0 20 2.4\"/></svg>";
                }

        }
        return decidedFace;
    }

    pub fn  _getStyleTag(faceColor : FaceColors , skinColor : SkinColors ) -> ByteArray { 
        let mut res  : ByteArray = "<style>.faceStrokeColor{stroke:";
        // the size of the color may be get be not hard coded  is this ok or not ? 
        match faceColor {
            FaceColors::NORMAL => { res.append_word(karstColors::darkGold , 7 )  ; },
            FaceColors::GOLD => { res.append_word(karstColors::black, 7 ); },
        };
        res.append(@"} .faceFillColor{fill:") ;
        match faceColor {
            FaceColors::NORMAL => { res.append_word(karstColors::darkGold , 7)  ; },
            FaceColors::GOLD => { res.append_word(karstColors::black, 7 ); },
        };
         res.append(@"} .skinColorBase{fill:"); 
         res.append_word(_getBaseColor(skinColor),7);
         res.append(@"} .skinColorLight{fill:");
         res.append_word(_getLightColor(skinColor),7);
         res.append(@"} .skinColorDark{fill:");
         res.append_word(_getDarkColor(skinColor),7);
         res.append(@"} .mouthOverlay{fill:");
         match faceColor {
            FaceColors::NORMAL => { res.append_word(karstColors::darkGold , 7)  ; },
            FaceColors::GOLD => { res.append_word(karstColors::black, 7 ); },
        };
        res.append(@"}</style>"); 
        return res; 
    }

    pub fn _getBaseColor(color: SkinColors) -> felt252 {
        match color {
            SkinColors::GREEN => { return karstColors::baseGreen; },
            SkinColors::PINK => { return karstColors::basePink; },
            SkinColors::PURPLE => { return karstColors::basePurple; },
            SkinColors::BLUE => { return karstColors::baseBlue; },
            SkinColors::GOLD => { return karstColors::baseGold; },
        }
    }

    pub fn _getLightColor(color: SkinColors) -> felt252 {
        match color {
            SkinColors::GREEN => { return karstColors::lightGreen; },
            SkinColors::PINK => { return karstColors::lightPink; },
            SkinColors::PURPLE => { return karstColors::lightPurple; },
            SkinColors::BLUE => { return karstColors::lightBlue; },
            SkinColors::GOLD => { return karstColors::lightGold; },
        }
    }
    pub fn _getDarkColor(color: SkinColors) -> felt252 {
        match color {
            SkinColors::GREEN => { return karstColors::darkGreen; },
            SkinColors::PINK => { return karstColors::darkPink; },
            SkinColors::PURPLE => { return karstColors::darkPurple; },
            SkinColors::BLUE => { return karstColors::darkBlue; },
            SkinColors::GOLD => { return karstColors::darkGold; },
        }
    }
}
