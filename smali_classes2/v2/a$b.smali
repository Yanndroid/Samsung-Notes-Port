.class public Lv2/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv2/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/a;->l(Le1/c;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ll0/a;

.field public final synthetic b:Le1/c;

.field public final synthetic c:Lv2/a;


# direct methods
.method public constructor <init>(Lv2/a;Ll0/a;Le1/c;)V
    .locals 0

    iput-object p1, p0, Lv2/a$b;->c:Lv2/a;

    iput-object p2, p0, Lv2/a$b;->a:Ll0/a;

    iput-object p3, p0, Lv2/a$b;->b:Le1/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lv2/a$b;->a:Ll0/a;

    iget-object v1, p0, Lv2/a$b;->b:Le1/c;

    invoke-virtual {v0}, Ll0/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ll0/a;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lv2/a$b;->c:Lv2/a;

    iget-object v1, p0, Lv2/a$b;->b:Le1/c;

    iget-object v2, p0, Lv2/a$b;->a:Ll0/a;

    invoke-virtual {v2}, Ll0/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Le1/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lv2/a$b;->a:Ll0/a;

    invoke-virtual {v2}, Ll0/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lv2/a;->f(Lv2/a;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lv2/a$b;->a:Ll0/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ll0/a;->r(Z)V

    return-void
.end method
