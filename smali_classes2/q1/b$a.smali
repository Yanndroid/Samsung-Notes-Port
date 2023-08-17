.class public Lq1/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq1/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lq1/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lq1/b;

    invoke-direct {v0}, Lq1/b;-><init>()V

    iput-object v0, p0, Lq1/b$a;->a:Lq1/b;

    return-void
.end method


# virtual methods
.method public a()Lq1/b;
    .locals 1

    iget-object v0, p0, Lq1/b$a;->a:Lq1/b;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Lq1/b$a;
    .locals 1

    iget-object v0, p0, Lq1/b$a;->a:Lq1/b;

    invoke-static {v0, p1}, Lq1/b;->a(Lq1/b;Landroid/content/Context;)V

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lq1/b$a;
    .locals 1

    iget-object v0, p0, Lq1/b$a;->a:Lq1/b;

    invoke-static {v0, p1}, Lq1/b;->b(Lq1/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lq1/b$a;
    .locals 1

    iget-object v0, p0, Lq1/b$a;->a:Lq1/b;

    invoke-static {v0, p1}, Lq1/b;->c(Lq1/b;Ljava/lang/String;)V

    return-object p0
.end method

.method public e(Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;)Lq1/b$a;
    .locals 1

    iget-object v0, p0, Lq1/b$a;->a:Lq1/b;

    invoke-static {v0, p1}, Lq1/b;->d(Lq1/b;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;)V

    return-object p0
.end method
