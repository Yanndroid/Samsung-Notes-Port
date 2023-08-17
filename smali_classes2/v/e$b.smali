.class public Lv/e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
        "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(ILcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lv/e$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p1, p0, Lv/e$b;->a:I

    iput-object p2, p0, Lv/e$b;->b:Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;)V
    .locals 3

    iget-object p1, p0, Lv/e$b;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget v0, p0, Lv/e$b;->a:I

    if-ne p1, v0, :cond_0

    const-string p1, "SesGroupUtil"

    const-string v0, " GroupInfoUpdateCallback result"

    invoke-static {p1, v0}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lv/e$b;->b:Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;

    new-instance v0, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;

    new-instance v1, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;-><init>(I)V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;-><init>(Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;Z)V

    invoke-interface {p1, v0}, Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupSyncResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/common/result/BooleanResult;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;

    invoke-virtual {p0, p1}, Lv/e$b;->a(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;)V

    return-void
.end method
