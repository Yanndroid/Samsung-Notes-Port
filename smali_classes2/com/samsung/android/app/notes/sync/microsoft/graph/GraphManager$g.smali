.class public Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "g"
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    invoke-direct {v0}, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;-><init>()V

    sput-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$g;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    return-void
.end method

.method public static bridge synthetic a()Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager$g;->a:Lcom/samsung/android/app/notes/sync/microsoft/graph/GraphManager;

    return-object v0
.end method
