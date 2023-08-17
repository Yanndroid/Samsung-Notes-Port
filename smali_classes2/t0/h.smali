.class public abstract Lt0/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt0/g;


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lb3/u;

.field public c:Lc0/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->a()Lx/a;

    move-result-object v0

    invoke-interface {v0}, Lx/a;->getAppContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lt0/h;->a:Landroid/content/Context;

    invoke-static {}, Lb3/u;->h()Lb3/u;

    move-result-object v0

    iput-object v0, p0, Lt0/h;->b:Lb3/u;

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->o()Lc0/a;

    move-result-object v0

    iput-object v0, p0, Lt0/h;->c:Lc0/a;

    return-void
.end method
