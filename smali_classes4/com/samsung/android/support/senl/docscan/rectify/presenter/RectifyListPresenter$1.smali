.class Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;
.super Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->updateRectifiedImage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

.field public final synthetic val$imagePath:Ljava/lang/String;

.field public final synthetic val$updatePosition:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    iput p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->val$updatePosition:I

    iput-object p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->val$imagePath:Ljava/lang/String;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->val$updatePosition:I

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->val$imagePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;->mImageDataMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->d(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;ILjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->c(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$1;->val$imagePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
