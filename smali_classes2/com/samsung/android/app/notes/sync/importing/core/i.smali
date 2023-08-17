.class public Lcom/samsung/android/app/notes/sync/importing/core/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/samsung/android/app/notes/sync/importing/core/i;

.field public static b:Z

.field public static c:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/importing/core/i;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/importing/core/i;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/importing/core/i;->a:Lcom/samsung/android/app/notes/sync/importing/core/i;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/notes/sync/importing/core/i;->b:Z

    sput-boolean v0, Lcom/samsung/android/app/notes/sync/importing/core/i;->c:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/notes/sync/importing/core/i;->b:Z

    return v0
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/app/notes/sync/importing/core/i;->c:Z

    return v0
.end method

.method public static c(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/app/notes/sync/importing/core/i;->b:Z

    return-void
.end method

.method public static d(Z)V
    .locals 0

    sput-boolean p0, Lcom/samsung/android/app/notes/sync/importing/core/i;->c:Z

    return-void
.end method
