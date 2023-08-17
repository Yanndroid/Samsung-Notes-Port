.class Lorg/apache/poi/java/awt/color/ICC_Profile$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/sun/java2d/cmm/ProfileActivator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/java/awt/color/ICC_Profile;-><init>(Lorg/apache/poi/sun/java2d/cmm/ProfileDeferralInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/poi/java/awt/color/ICC_Profile;


# direct methods
.method public constructor <init>(Lorg/apache/poi/java/awt/color/ICC_Profile;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/java/awt/color/ICC_Profile$1;->this$0:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activate()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/java/awt/color/ICC_Profile$1;->this$0:Lorg/apache/poi/java/awt/color/ICC_Profile;

    invoke-virtual {v0}, Lorg/apache/poi/java/awt/color/ICC_Profile;->activateDeferredProfile()V

    return-void
.end method
