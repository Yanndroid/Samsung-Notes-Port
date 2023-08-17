.class public Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/network/networkutils/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:I

.field public b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field public d:Ljava/io/InputStream;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Landroid/content/Context;

.field public h:Ljava/lang/String;

.field public i:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

.field public j:Ljava/lang/String;

.field public k:Lcom/samsung/android/app/notes/sync/network/networkutils/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/samsung/android/app/notes/sync/network/networkutils/j;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;-><init>(Lcom/samsung/android/app/notes/sync/network/networkutils/l;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->d:Ljava/io/InputStream;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->f(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->a(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->e(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/util/Map;)V

    iget v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->a:I

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->i(Lcom/samsung/android/app/notes/sync/network/networkutils/j;I)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->b(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->i:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->h(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->d(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->g:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->c(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->k:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->j(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Lcom/samsung/android/app/notes/sync/network/networkutils/c;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->e:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->k(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->g(Lcom/samsung/android/app/notes/sync/network/networkutils/j;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(Landroid/content/Context;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->g:Landroid/content/Context;

    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->j:Ljava/lang/String;

    return-object p0
.end method

.method public f(Ljava/util/Map;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->b:Ljava/util/Map;

    return-object p0
.end method

.method public g([Lorg/apache/http/Header;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->k([Lorg/apache/http/Header;)V

    return-object p0
.end method

.method public h(Ljava/io/InputStream;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->d:Ljava/io/InputStream;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->h:Ljava/lang/String;

    return-object p0
.end method

.method public j(Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->i:Lcom/samsung/android/app/notes/sync/network/networkutils/j$c;

    return-object p0
.end method

.method public final k([Lorg/apache/http/Header;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->b:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->b:Ljava/util/Map;

    :cond_0
    if-eqz p1, :cond_1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->b:Ljava/util/Map;

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public l(I)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->a:I

    return-object p0
.end method

.method public m(Lcom/samsung/android/app/notes/sync/network/networkutils/c;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->k:Lcom/samsung/android/app/notes/sync/network/networkutils/c;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->e:Ljava/lang/String;

    return-object p0
.end method
