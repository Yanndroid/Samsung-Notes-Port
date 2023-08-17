.class Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;->accept(Lcom/microsoft/identity/common/java/controllers/CommandResult;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

.field public final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;Ljava/lang/Throwable;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->this$0:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    iput-object p2, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->this$0:Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;

    iget-object v0, v0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3;->val$command:Lcom/microsoft/identity/common/java/commands/BaseCommand;

    iget-object v1, p0, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher$3$1;->val$throwable:Ljava/lang/Throwable;

    invoke-static {v0, v1}, Lcom/microsoft/identity/common/java/controllers/CommandDispatcher;->access$700(Lcom/microsoft/identity/common/java/commands/BaseCommand;Ljava/lang/Throwable;)V

    return-void
.end method
