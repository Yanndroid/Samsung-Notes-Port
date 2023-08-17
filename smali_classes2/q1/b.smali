.class public Lq1/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq1/b$a;
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bridge synthetic a(Lq1/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lq1/b;->a:Landroid/content/Context;

    return-void
.end method

.method public static bridge synthetic b(Lq1/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq1/b;->c:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic c(Lq1/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lq1/b;->d:Ljava/lang/String;

    return-void
.end method

.method public static bridge synthetic d(Lq1/b;Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;)V
    .locals 0

    iput-object p1, p0, Lq1/b;->b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-void
.end method


# virtual methods
.method public e()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lq1/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq1/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lq1/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public h()Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;
    .locals 1

    iget-object v0, p0, Lq1/b;->b:Lcom/samsung/android/app/notes/sync/migration/common/Type$Work;

    return-object v0
.end method
