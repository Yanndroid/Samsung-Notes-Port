.class Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/view/SemWindowManager$FoldStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;-><init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;

.field public final synthetic val$this$0:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy$1;->this$1:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;

    iput-object p2, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy$1;->val$this$0:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFoldStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy$1;->this$1:Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;

    invoke-static {v0}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;->a(Lcom/samsung/android/support/senl/cm/base/framework/sem/view/FoldStateCompatImplFactory$FoldStateCompatFoldFormImpl$FoldStateProxy;)Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/support/senl/cm/base/framework/sem/view/AbsFoldStateCompatImplFactory$FoldStateChangeListener;->onChanged(Z)V

    return-void
.end method

.method public onTableModeChanged(Z)V
    .locals 0

    return-void
.end method
