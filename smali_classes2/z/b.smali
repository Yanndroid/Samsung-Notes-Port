.class public Lz/b;
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

    invoke-interface {v0}, Lx/d;->createLMemoConverter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz/b;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lx/d$a;)Z
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/b;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2}, Lx/d;->LMemoConvertToSDoc(Ljava/lang/Object;Ljava/lang/String;Lx/d$a;)Z

    move-result p1

    return p1
.end method
