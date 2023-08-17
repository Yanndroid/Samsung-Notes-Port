.class public Lcom/samsung/android/app/notes/sync/migration/c$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/migration/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/notes/sync/migration/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/migration/c;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/migration/c;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/migration/c$d;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    return-void
.end method

.method public static bridge synthetic a()Lcom/samsung/android/app/notes/sync/migration/c;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/migration/c$d;->a:Lcom/samsung/android/app/notes/sync/migration/c;

    return-object v0
.end method
