.class public Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;
    }
.end annotation


# static fields
.field public static final CLIP_LABEL:Ljava/lang/String; = "notes_clip_label"

.field public static final CLIP_LABEL_CID_INDEX:I = 0x1

.field public static final CLIP_LABEL_CONTENT_TYPE_INDEX:I = 0x2

.field public static final CLIP_LABEL_POS_INDEX:I = 0x3

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_OBJECT:I = 0x1

.field public static final TYPE_OBJECT_SPAN:I = 0x3

.field public static final TYPE_TEXT:I = 0x2


# instance fields
.field public contentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/sdk/pen/document/SpenObjectBase;",
            ">;"
        }
    .end annotation
.end field

.field public contentType:I

.field public htmlText:Ljava/lang/String;

.field public plainText:Ljava/lang/String;

.field public selection:[I

.field public uriList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->plainText:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->htmlText:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->uriList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    return-void
.end method

.method public static parseClipLabel(Ljava/lang/String;I)[Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "notes_clip_label"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aget-object v0, p0, v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-object p0

    :cond_1
    :goto_0
    return-object v1
.end method


# virtual methods
.method public createClipLabel(IILandroid/graphics/PointF;)Ljava/lang/String;
    .locals 3
    .param p3    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iget v2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    if-eq v2, v0, :cond_0

    const/4 v0, 0x3

    if-ne v2, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->selection:[I

    :cond_1
    new-instance v0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;

    invoke-direct {v0, p2, p3, v1}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;-><init>(ILandroid/graphics/PointF;[I)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notes_clip_label/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent;->contentType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/support/senl/nt/composer/main/base/model/share/DropContent$StartPosition;->convertToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method
