.class Lorg/apache/poi/java/awt/color/ICC_Profile$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/color/ICC_Profile;->activateDeferredProfile()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction<",
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/color/ICC_Profile;

.field public final synthetic val$fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ICC_Profile;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile$3;->this$0:Lorg/apache/poi/java/awt/color/ICC_Profile;

    iput-object p2, p0, Lorg/apache/poi/java/awt/color/ICC_Profile$3;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileInputStream;
    .locals 2

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile$3;->val$fileName:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->access$000(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/poi/java/awt/color/ICC_Profile$3;->run()Ljava/io/FileInputStream;

    move-result-object v0

    return-object v0
.end method
