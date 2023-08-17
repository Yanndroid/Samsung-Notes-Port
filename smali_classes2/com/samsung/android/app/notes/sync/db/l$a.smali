.class public Lcom/samsung/android/app/notes/sync/db/l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/db/l;->E(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->c:Ljava/util/List;

    iput-object p4, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->d:Ljava/util/List;

    iput p5, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->b:Ljava/util/List;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->c:Ljava/util/List;

    iget-object v3, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->d:Ljava/util/List;

    iget v4, p0, Lcom/samsung/android/app/notes/sync/db/l$a;->e:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/notes/sync/db/l;->F(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Lcom/samsung/android/sdk/composer/document/sdoc/SpenSDoc;Z)Z

    return-void
.end method
