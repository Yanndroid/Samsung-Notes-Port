.class Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->returnCommandResult(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

.field public final synthetic val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/controllers/CommandResult;Lcom/microsoft/identity/common/java/commands/BaseCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    sget-object v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$6;->$SwitchMap$com$microsoft$identity$common$java$commands$ICommandResult$ResultStatus:[I

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;

    invoke-virtual {v1}, Lcom/microsoft/identity/common/java/controllers/CommandResult;->getStatus()Lcom/microsoft/identity/common/java/commands/ICommandResult$ResultStatus;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    invoke-virtual {v0}, Lcom/microsoft/identity/common/java/commands/BaseCommand;->getCallback()Lcom/microsoft/identity/common/java/commands/CommandCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/microsoft/identity/common/java/commands/CommandCallback;->onCancel()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$1000(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$4;->val$result:Lcom/microsoft/identity/common/java/controllers/CommandResult;

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$900(Lcom/microsoft/identity/common/java/commands/BaseCommand;Lcom/microsoft/identity/common/java/controllers/CommandResult;)V

    :goto_0
    return-void
.end method
