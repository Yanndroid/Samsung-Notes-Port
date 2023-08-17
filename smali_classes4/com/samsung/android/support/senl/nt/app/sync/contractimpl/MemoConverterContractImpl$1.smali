.class Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;->TMemoConvertToSDoc(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;Lx/d$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;

.field public final synthetic val$progressListener:Lx/d$b;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;Lx/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$1;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$1;->val$progressListener:Lx/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$1;->val$progressListener:Lx/d$b;

    invoke-interface {p3, p1, p2}, Lx/d$b;->onProgress(II)V

    return-void
.end method
