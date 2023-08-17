.class Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$2;
.super Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->loadThumbnailImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-direct {p0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$LoadImageBitmapTask$PostRunnable;->mImageDataMap:Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->b(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-static {v2}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->b(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$2;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;

    invoke-static {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;->a(Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter;)Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/support/senl/docscan/rectify/presenter/RectifyListPresenter$Contract;->notifyThumbnailDataChanged()V

    return-void
.end method
