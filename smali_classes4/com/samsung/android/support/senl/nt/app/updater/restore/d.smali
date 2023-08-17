.class public final synthetic Lcom/samsung/android/support/senl/nt/app/updater/restore/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/d;->a:Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/support/senl/nt/app/updater/restore/d;->a:Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;

    invoke-static {v0}, Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;->a(Lcom/samsung/android/support/senl/nt/app/updater/restore/OldFolderSdocXDetector;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
