.class Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;->deleteClipboardFolders(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;


# direct methods
.method public constructor <init>(Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat$1;->this$0:Lcom/samsung/android/support/senl/cm/base/framework/content/ClipboardManagerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Clip_XXXX"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
