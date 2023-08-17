.class public Li1/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li1/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Li1/b;->b(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/microsoft/graph/data/GraphDatabase;->a()Li1/d;

    move-result-object p1

    iput-object p1, p0, Li1/g;->a:Li1/d;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Li1/f;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Li1/g;->a:Li1/d;

    invoke-virtual {v0}, Li1/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Li1/g;->a:Li1/d;

    sget-object v1, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;->DELETE:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphItem$RequestType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Li1/d;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Li1/g;->a:Li1/d;

    invoke-virtual {v0}, Li1/d;->c()I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Li1/g;->a:Li1/d;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Li1/d;->d(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Li1/g;->a:Li1/d;

    invoke-virtual {v0, p1, p2}, Li1/d;->e(Ljava/lang/String;I)V

    return-void
.end method
