.class public Lcom/samsung/android/sdk/pen/document/SpenObjectFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createObject(I)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 4

    const-string v0, ""

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v1

    :pswitch_1
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectLine;

    const/4 v0, 0x0

    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, v1, v3}, Lcom/samsung/android/sdk/pen/document/SpenObjectLine;-><init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>()V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;-><init>(Ljava/util/ArrayList;)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-direct {p0}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;-><init>()V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Ljava/lang/String;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>(Ljava/lang/String;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static createObject(IZ)Lcom/samsung/android/sdk/pen/document/SpenObjectBase;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    return-object v1

    :pswitch_1
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectLink;-><init>(Z)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVideo;-><init>(Z)V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectPainting;-><init>(Z)V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectWeb;-><init>(Z)V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectFormula;-><init>(Z)V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectVoice;-><init>(Z)V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectLine;

    new-instance p1, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {p0, v0, p1, v2}, Lcom/samsung/android/sdk/pen/document/SpenObjectLine;-><init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectShape;-><init>(IZ)V

    return-object p0

    :pswitch_9
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectContainer;-><init>(Z)V

    return-object p0

    :pswitch_a
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;-><init>(Z)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/sdk/pen/document/SpenObjectImage;->setImage(Ljava/lang/String;)V

    return-object p0

    :pswitch_b
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectTextBox;-><init>(Z)V

    return-object p0

    :pswitch_c
    new-instance p0, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/pen/document/SpenObjectStroke;-><init>(Z)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
