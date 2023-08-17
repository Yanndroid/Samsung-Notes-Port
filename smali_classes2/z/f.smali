.class public Lz/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    invoke-interface {v0}, Lx/d;->createSPDConverter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz/f;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/f;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lx/d;->spdConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    invoke-interface {v0}, Lx/d;->getSpdConvertModeNormal()I

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)J
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/f;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lx/d;->getSpdLastModifiedTime(Ljava/lang/Object;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public d(Ljava/lang/String;)Z
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/f;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Lx/d;->isSpdAlreadyConverted(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
