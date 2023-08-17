.class public Lo2/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/synchronization/core/tasks/SyncBaseTask$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo2/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo2/c;


# direct methods
.method public constructor <init>(Lo2/c;)V
    .locals 0

    iput-object p1, p0, Lo2/c$a;->a:Lo2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo2/c$a;->a:Lo2/c;

    invoke-static {v0, p1, p2}, Lo2/c;->d(Lo2/c;ILjava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 2

    const-string v0, "SyncLogic"

    const-string v1, "onSyncStart()"

    invoke-static {v0, v1}, Lcom/samsung/android/support/senl/nt/base/common/log/Debugger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lo2/c$a;->a:Lo2/c;

    invoke-static {v0, p1}, Lo2/c;->b(Lo2/c;I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lo2/c$a;->a:Lo2/c;

    invoke-static {v0, p1}, Lo2/c;->c(Lo2/c;I)V

    return-void
.end method
