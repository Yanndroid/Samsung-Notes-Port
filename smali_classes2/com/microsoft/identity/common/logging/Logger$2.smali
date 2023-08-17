.class Lcom/microsoft/identity/common/logging/Logger$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/microsoft/identity/common/java/logging/ILoggerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/microsoft/identity/common/logging/Logger;->setExternalLogger(Lcom/microsoft/identity/common/logging/ILoggerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/microsoft/identity/common/logging/Logger;

.field public final synthetic val$externalLogger:Lcom/microsoft/identity/common/logging/ILoggerCallback;


# direct methods
.method public constructor <init>(Lcom/microsoft/identity/common/logging/Logger;Lcom/microsoft/identity/common/logging/ILoggerCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/microsoft/identity/common/logging/Logger$2;->this$0:Lcom/microsoft/identity/common/logging/Logger;

    iput-object p2, p0, Lcom/microsoft/identity/common/logging/Logger$2;->val$externalLogger:Lcom/microsoft/identity/common/logging/ILoggerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public log(Ljava/lang/String;Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/microsoft/identity/common/logging/Logger$2;->val$externalLogger:Lcom/microsoft/identity/common/logging/ILoggerCallback;

    invoke-static {p2}, Lcom/microsoft/identity/common/logging/Logger$LogLevel;->access$200(Lcom/microsoft/identity/common/java/logging/Logger$LogLevel;)Lcom/microsoft/identity/common/logging/Logger$LogLevel;

    move-result-object p2

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/microsoft/identity/common/logging/ILoggerCallback;->log(Ljava/lang/String;Lcom/microsoft/identity/common/logging/Logger$LogLevel;Ljava/lang/String;Z)V

    return-void
.end method
