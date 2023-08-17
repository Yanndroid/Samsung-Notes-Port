.class public Lz/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz/a$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;Lz/a$a;)V
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->c()Lx/c;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lx/c;->convert(Lcom/samsung/android/support/senl/cm/base/spenwrapper/converter/common/IConvertItem;Lx/c$a;)V

    return-void
.end method

.method public b()V
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->c()Lx/c;

    move-result-object v0

    invoke-interface {v0}, Lx/c;->init()V

    return-void
.end method

.method public c()V
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->c()Lx/c;

    move-result-object v0

    invoke-interface {v0}, Lx/c;->release()V

    return-void
.end method
