.class public interface abstract Lorg/apache/poi/sun/java2d/StateTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALWAYS_CURRENT:Lorg/apache/poi/sun/java2d/StateTracker;

.field public static final NEVER_CURRENT:Lorg/apache/poi/sun/java2d/StateTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/poi/sun/java2d/StateTracker$1;

    invoke-direct {v0}, Lorg/apache/poi/sun/java2d/StateTracker$1;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/java2d/StateTracker;->ALWAYS_CURRENT:Lorg/apache/poi/sun/java2d/StateTracker;

    new-instance v0, Lorg/apache/poi/sun/java2d/StateTracker$2;

    invoke-direct {v0}, Lorg/apache/poi/sun/java2d/StateTracker$2;-><init>()V

    sput-object v0, Lorg/apache/poi/sun/java2d/StateTracker;->NEVER_CURRENT:Lorg/apache/poi/sun/java2d/StateTracker;

    return-void
.end method


# virtual methods
.method public abstract isCurrent()Z
.end method
