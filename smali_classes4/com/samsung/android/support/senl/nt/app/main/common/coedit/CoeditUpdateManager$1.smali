.class Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/support/senl/nt/app/updater/connector/INewVersionCheckResetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->checkForceUpdateNotesVersion(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;)Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

.field public final synthetic val$appStoreResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;

.field public final synthetic val$currentVersion:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    iput-object p2, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->val$appStoreResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;

    iput p3, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->val$currentVersion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResult(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkForceUpdateNotesVersion#getResult, marketVersionCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoeditUpdateManager"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const-string p1, "checkForceUpdateNotesVersion#getResult, RESULT_CODE_NO_NETWORK"

    invoke-static {v1, p1}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->val$appStoreResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;->ERROR:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;->onResult(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;)V

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->val$currentVersion:I

    if-ge v0, p1, :cond_1

    const-string v0, "checkForceUpdateNotesVersion#getResult, currentVersion < marketVersionCode"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;I)V

    iget-object p1, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->val$appStoreResultListener:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResultListener;

    if-eqz p1, :cond_2

    sget-object v0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;->NEED_UPDATE:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$AppStoreResult;

    goto :goto_0

    :cond_1
    if-ne v0, p1, :cond_2

    const-string v0, "checkForceUpdateNotesVersion#getResult, currentVersion is latest"

    invoke-static {v1, v0}, Lcom/samsung/android/support/senl/nt/app/common/log/MainCoeditLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager$1;->this$0:Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;

    invoke-static {v0, p1}, Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;->a(Lcom/samsung/android/support/senl/nt/app/main/common/coedit/CoeditUpdateManager;I)V

    :cond_2
    :goto_1
    return-void
.end method
