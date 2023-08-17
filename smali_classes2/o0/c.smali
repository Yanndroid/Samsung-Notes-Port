.class public Lo0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/d;
.implements Lm0/b;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lo0/c;->a:I

    return-void
.end method

.method public static f(Ljava/lang/String;Lk0/b;)Lo0/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "background"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p0, Lo0/a;

    invoke-direct {p0}, Lo0/a;-><init>()V

    return-object p0

    :cond_1
    const-string v1, "color"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p0, Lo0/b;

    invoke-direct {p0}, Lo0/b;-><init>()V

    return-object p0

    :cond_2
    const-string v1, "image"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p0, Lo0/d;

    invoke-direct {p0, p1}, Lo0/d;-><init>(Lk0/b;)V

    return-object p0

    :cond_3
    const-string p1, "pattern"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lo0/e;

    invoke-direct {p0}, Lo0/e;-><init>()V

    return-object p0

    :cond_4
    return-object v0
.end method


# virtual methods
.method public a(Le1/o;)V
    .locals 2

    iget v0, p0, Lo0/c;->a:I

    invoke-virtual {p0, v0}, Lo0/c;->e(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-virtual {p1, v1, v0}, Le1/o;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Le1/o;)V
    .locals 0

    return-void
.end method

.method public d()I
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public e(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "color"

    return-object p1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const-string p1, "image"

    return-object p1

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const-string p1, "pattern"

    return-object p1

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    const-string p1, "background"

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public g(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 0

    return-void
.end method

.method public h(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    return-void
.end method

.method public i(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method
