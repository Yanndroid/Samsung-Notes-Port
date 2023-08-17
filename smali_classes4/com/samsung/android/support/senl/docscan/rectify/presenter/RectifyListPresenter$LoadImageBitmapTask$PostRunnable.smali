.class public abstract Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PostRunnable"
.end annotation


# instance fields
.field public mImageDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;->mImageDataMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;->run()V

    return-void
.end method

.method public abstract run()V
.end method
