.class public Lz/g;
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

    invoke-interface {v0}, Lx/d;->createScrapBookConverter()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lz/g;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lx/e;->d()Lx/e;

    move-result-object v0

    invoke-virtual {v0}, Lx/e;->f()Lx/d;

    move-result-object v0

    iget-object v1, p0, Lz/g;->a:Ljava/lang/Object;

    invoke-interface {v0, v1, p1, p2, p3}, Lx/d;->scrapBookConverterConvertToSDoc(Ljava/lang/Object;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
