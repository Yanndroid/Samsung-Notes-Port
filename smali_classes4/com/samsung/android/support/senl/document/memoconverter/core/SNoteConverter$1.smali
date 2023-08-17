.class Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter$1;->this$0:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter$1;->this$0:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-static {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->access$000(Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;)Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter$1;->this$0:Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;

    invoke-static {p3}, Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;->access$000(Lcom/samsung/android/support/senl/document/memoconverter/core/SNoteConverter;)Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;

    move-result-object p3

    int-to-float p1, p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;->onProgress(IILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method
