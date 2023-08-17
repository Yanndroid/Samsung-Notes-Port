.class public Lcom/samsung/android/support/senl/cm/base/spenwrapper/constructor/SpenObjectConstructor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeObjectImage()Lcom/samsung/android/sdk/pen/document/SpenObjectImage;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;-><init>()V

    return-object v0
.end method

.method public static makeObjectPainting()Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;-><init>()V

    return-object v0
.end method

.method public static makeObjectShape()Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>()V

    return-object v0
.end method

.method public static makeObjectShape(I)Lcom/samsung/android/sdk/pen/document/SpenObjectShape;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(I)V

    return-object v0
.end method

.method public static makeObjectStroke()Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>()V

    return-object v0
.end method

.method public static makeObjectTextBox()Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>()V

    return-object v0
.end method

.method public static makeObjectTextBox(Ljava/lang/String;)Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static makeObjectVoice()Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;-><init>()V

    return-object v0
.end method

.method public static makeObjectWeb()Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;-><init>()V

    return-object v0
.end method

.method public static makeSpenCapturePage(Landroid/content/Context;)Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/pen/engine/SpenCapturePage;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static makeVoiceData()Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;

    invoke-direct {v0}, Lcom/samsung/android/sdk/pen/worddoc/SpenVoiceData;-><init>()V

    return-object v0
.end method
