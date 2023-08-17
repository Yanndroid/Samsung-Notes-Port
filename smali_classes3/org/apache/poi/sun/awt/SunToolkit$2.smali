.class final Lorg/apache/poi/sun/awt/SunToolkit$2;
.super Lorg/apache/poi/sun/awt/PeerEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/poi/sun/awt/SunToolkit;->executeOnEventHandlerThread(Ljava/lang/Object;Ljava/lang/Runnable;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic val$when:J


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Runnable;JJ)V
    .locals 0

    iput-wide p5, p0, Lorg/apache/poi/sun/awt/SunToolkit$2;->val$when:J

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/sun/awt/PeerEvent;-><init>(Ljava/lang/Object;Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public getWhen()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/sun/awt/SunToolkit$2;->val$when:J

    return-wide v0
.end method
