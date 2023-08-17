.class public Lo1/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo1/a;->f(Lo1/a$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo1/a$b;

.field public final synthetic b:Lo1/a;


# direct methods
.method public constructor <init>(Lo1/a;Lo1/a$b;)V
    .locals 0

    iput-object p1, p0, Lo1/a$a;->b:Lo1/a;

    iput-object p2, p0, Lo1/a$a;->a:Lo1/a$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "OnenoteAccountLinkingStatusManager"

    :try_start_0
    iget-object v1, p0, Lo1/a$a;->b:Lo1/a;

    invoke-static {v1}, Lo1/a;->a(Lo1/a;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lo1/a$a;->a:Lo1/a$b;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lo1/a$b;->onFinished(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/cm/base/framework/support/LoggerBase;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void
.end method
