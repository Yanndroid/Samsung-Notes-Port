.class public Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a;->c(Ljava/lang/String;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a$a;->c:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a;

    iput-object p2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a$a;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a$a;->c:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a;

    iget-object v0, v0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a;->a:Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b;

    iget-object v1, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a$a;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b$a$a;->b:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b;->e(Lcom/samsung/android/app/notes/sync/contentsharing/sharelogic/b;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
