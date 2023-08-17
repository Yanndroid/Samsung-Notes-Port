.class public Lcom/samsung/android/app/notes/sync/network/networkutils/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/network/networkutils/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/network/networkutils/h;->C()Lcom/samsung/android/app/notes/sync/network/networkutils/b$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/network/networkutils/h;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/network/networkutils/h;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I[Lorg/apache/http/Header;JLjava/io/InputStream;)V
    .locals 0

    iget-object p3, p0, Lcom/samsung/android/app/notes/sync/network/networkutils/h$a;->a:Lcom/samsung/android/app/notes/sync/network/networkutils/h;

    invoke-static {p3}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->r(Lcom/samsung/android/app/notes/sync/network/networkutils/h;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object p4

    invoke-virtual {p4, p5}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->h(Ljava/io/InputStream;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->l(I)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->g([Lorg/apache/http/Header;)Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j$a;->c()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/j;->A()Lcom/samsung/android/app/notes/sync/network/networkutils/j;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/samsung/android/app/notes/sync/network/networkutils/h;->l(Lcom/samsung/android/app/notes/sync/network/networkutils/h;Lcom/samsung/android/app/notes/sync/network/networkutils/j;)V

    return-void
.end method
