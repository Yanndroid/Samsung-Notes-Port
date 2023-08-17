.class public Lcom/samsung/android/support/senl/nt/livesharing/LiveSharingIntent;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTRA_START_LIVE_SHARING:Ljava/lang/String; = "COACTIVITY_START_INFO"

.field public static final NOTES_ENTRY_CLASS:Ljava/lang/String; = "com.samsung.android.app.notes.memolist.MemoListActivity"

.field public static final NOTES_PACKAGE:Ljava/lang/String; = "com.samsung.android.app.notes"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createStartNoteIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.notes"

    const-string v2, "com.samsung.android.app.notes.memolist.MemoListActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x2

    new-array v1, v1, [B

    fill-array-data v1, :array_0

    const-string v2, "COACTIVITY_START_INFO"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-object v0

    :array_0
    .array-data 1
        0x10t
        0x1t
    .end array-data
.end method
