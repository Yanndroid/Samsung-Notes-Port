.class public Ls2/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La2/d$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls2/f;->d(Ljava/util/List;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ls2/f;


# direct methods
.method public constructor <init>(Ls2/f;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ls2/f$a;->b:Ls2/f;

    iput-object p2, p0, Ls2/f$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object p1

    invoke-virtual {p1}, Lx/e;->h()Lb0/a;

    move-result-object p1

    iget-object v0, p0, Ls2/f$a;->b:Ls2/f;

    invoke-static {v0}, Ls2/f;->a(Ls2/f;)Lt2/b;

    move-result-object v0

    invoke-virtual {v0}, Lt2/b;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ls2/f$a;->a:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lb0/a;->deleteCategorySync(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p0, Ls2/f$a;->b:Ls2/f;

    invoke-static {p1}, Ls2/f;->a(Ls2/f;)Lt2/b;

    move-result-object p1

    invoke-virtual {p1}, Lt2/b;->I()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Ls2/f$a;->b:Ls2/f;

    invoke-static {p1}, Ls2/f;->a(Ls2/f;)Lt2/b;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lt2/b;->V(Z)V

    :cond_0
    return-void
.end method
