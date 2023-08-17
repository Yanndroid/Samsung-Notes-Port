.class Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/document/memoconverter/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;->QMemoConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;Lx/d$c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;

.field public final synthetic val$progressListener:Lx/d$c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;Lx/d$c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$3;->this$0:Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$3;->val$progressListener:Lx/d$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(IILjava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/sync/contractimpl/MemoConverterContractImpl$3;->val$progressListener:Lx/d$c;

    invoke-interface {v0, p1, p2, p3}, Lx/d$c;->onProgress(IILjava/util/ArrayList;)V

    return-void
.end method
