.class Lcom/microsoft/identity/client/Logger$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/internal/logging/ILoggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/client/Logger;->setExternalLogger(Lcom/microsoft/identity/client/ILoggerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/client/Logger;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/client/Logger;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/client/Logger$1;->this$0:Lcom/microsoft/identity/client/Logger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/microsoft/identity/common/internal/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lcom/microsoft/identity/client/Logger$2;->$SwitchMap$com$microsoft$identity$common$internal$logging$Logger$LogLevel:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/microsoft/identity/client/Logger$1;->this$0:Lcom/microsoft/identity/client/Logger;

    invoke-static {p2}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    move-result-object p2

    sget-object v0, Lcom/microsoft/identity/client/Logger$LogLevel;->INFO:Lcom/microsoft/identity/client/Logger$LogLevel;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unknown logLevel"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lcom/microsoft/identity/client/Logger$1;->this$0:Lcom/microsoft/identity/client/Logger;

    invoke-static {p2}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    move-result-object p2

    sget-object v0, Lcom/microsoft/identity/client/Logger$LogLevel;->VERBOSE:Lcom/microsoft/identity/client/Logger$LogLevel;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/microsoft/identity/client/Logger$1;->this$0:Lcom/microsoft/identity/client/Logger;

    invoke-static {p2}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    move-result-object p2

    sget-object v0, Lcom/microsoft/identity/client/Logger$LogLevel;->WARNING:Lcom/microsoft/identity/client/Logger$LogLevel;

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/microsoft/identity/client/Logger$1;->this$0:Lcom/microsoft/identity/client/Logger;

    invoke-static {p2}, Lcom/microsoft/identity/client/Logger;->access$000(Lcom/microsoft/identity/client/Logger;)Lcom/microsoft/identity/client/ILoggerCallback;

    move-result-object p2

    sget-object v0, Lcom/microsoft/identity/client/Logger$LogLevel;->ERROR:Lcom/microsoft/identity/client/Logger$LogLevel;

    :goto_0
    invoke-interface {p2, p1, v0, p3, p4}, Lcom/microsoft/identity/client/ILoggerCallback;->log(Ljava/lang/String;Lcom/microsoft/identity/client/Logger$LogLevel;Ljava/lang/String;Z)V

    return-void
.end method
