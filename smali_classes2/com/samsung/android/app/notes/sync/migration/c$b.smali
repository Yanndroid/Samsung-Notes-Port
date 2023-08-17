.class public Lcom/samsung/android/app/notes/sync/migration/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/notes/sync/migration/restore/StrokeRecognizeTask$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/migration/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/app/notes/sync/migration/c;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/notes/sync/migration/c;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/notes/sync/migration/c$b;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c$b;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->e(Lcom/samsung/android/app/notes/sync/migration/c;Z)V

    return-void
.end method

.method public onStarted()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/notes/sync/migration/c$b;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/notes/sync/migration/c;->e(Lcom/samsung/android/app/notes/sync/migration/c;Z)V

    return-void
.end method
