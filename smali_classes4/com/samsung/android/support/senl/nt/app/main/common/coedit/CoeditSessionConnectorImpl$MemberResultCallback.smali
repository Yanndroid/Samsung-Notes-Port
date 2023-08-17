.class Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MemberResultCallback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/sdk/mobileservice/social/group/GroupApi$GroupResultCallback<",
        "Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;",
        ">;"
    }
.end annotation


# static fields
.field private static mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;
    .locals 2

    const-class v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;

    invoke-direct {v1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;-><init>()V

    sput-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;

    :cond_0
    sget-object v1, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;->mInstance:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public onResult(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MemberResultCallback# onResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;->getStatus()Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/sdk/mobileservice/common/result/CommonResultStatus;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CoeditSessionConnectorImpl"

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;

    invoke-virtual {p0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditSessionConnectorImpl$MemberResultCallback;->onResult(Lcom/samsung/android/sdk/mobileservice/social/group/result/GroupMemberResult;)V

    return-void
.end method
