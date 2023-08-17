.class public Lv2/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv2/a;->g(Lv2/a$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lv2/a$d;

.field public final synthetic b:Lv2/a;


# direct methods
.method public constructor <init>(Lv2/a;Lv2/a$d;)V
    .locals 0

    iput-object p1, p0, Lv2/a$a;->b:Lv2/a;

    iput-object p2, p0, Lv2/a$a;->a:Lv2/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lv2/a$a;->b:Lv2/a;

    invoke-static {v0}, Lv2/a;->b(Lv2/a;)Ls0/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lv2/a$a;->a:Lv2/a$d;

    invoke-interface {v0}, Lv2/a$d;->run()V
    :try_end_0
    .catch Ls0/c; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lv2/a$a;->b:Lv2/a;

    invoke-static {v1, v0}, Lv2/a;->d(Lv2/a;Ls0/c;)V

    :goto_0
    return-void
.end method
