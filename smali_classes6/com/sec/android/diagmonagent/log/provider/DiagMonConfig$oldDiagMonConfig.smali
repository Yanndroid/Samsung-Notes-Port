.class Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "oldDiagMonConfig"
.end annotation


# instance fields
.field private mAgreeAsString:Ljava/lang/String;

.field private mAgreement:Z

.field public final synthetic this$0:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->this$0:Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    const-string p1, ""

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAgree()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    return v0
.end method

.method public getAgreeAsString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    return-object v0
.end method

.method public setAgree(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v0, "S"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Y"

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreeAsString:Ljava/lang/String;

    const-string v1, "D"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wrong agreement : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    goto :goto_2

    :cond_3
    sget-object p1, Lcom/sec/android/diagmonagent/log/provider/utils/DiagMonUtil;->TAG:Ljava/lang/String;

    const-string v0, "Empty agreement"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iput-boolean v2, p0, Lcom/sec/android/diagmonagent/log/provider/DiagMonConfig$oldDiagMonConfig;->mAgreement:Z

    :goto_2
    return-void
.end method
