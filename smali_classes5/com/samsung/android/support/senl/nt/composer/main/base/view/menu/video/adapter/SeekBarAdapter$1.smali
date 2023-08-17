.class Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;->onPreviewLoaded(ILandroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;

.field public final synthetic val$idx:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;

    iput p2, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$1;->this$0:Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter;

    iget v1, p0, Lcom/samsung/android/support/senl/nt/composer/main/base/view/menu/video/adapter/SeekBarAdapter$1;->val$idx:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method
