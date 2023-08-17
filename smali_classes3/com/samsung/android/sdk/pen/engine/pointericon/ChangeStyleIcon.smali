.class Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public color:I

.field public drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->drawable:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->color:I

    return-void
.end method


# virtual methods
.method public equals(I)Z
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/pen/engine/pointericon/ChangeStyleIcon;->color:I

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
