.class Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->notifyCurrentPositionChanged(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

.field public final synthetic val$position:I

.field public final synthetic val$prevPosition:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;II)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    iput p2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;->val$prevPosition:I

    iput p3, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;->this$0:Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;

    iget v1, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;->val$prevPosition:I

    iget v2, p0, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment$4;->val$position:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;->c(Lcom/samsung/android/support/senl/docscan/rectify/RectifyListFragment;II)V

    return-void
.end method
