.class public interface abstract Lorg/apache/poi/sun/awt/AWTAccessor$EventQueueAccessor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/sun/awt/AWTAccessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventQueueAccessor"
.end annotation


# virtual methods
.method public abstract getDispatchThread(Lorg/apache/poi/java/awt/EventQueue;)Ljava/lang/Thread;
.end method

.method public abstract getMostRecentEventTime(Lorg/apache/poi/java/awt/EventQueue;)J
.end method

.method public abstract invokeAndWait(Ljava/lang/Object;Ljava/lang/Runnable;)V
.end method

.method public abstract isDispatchThreadImpl(Lorg/apache/poi/java/awt/EventQueue;)Z
.end method

.method public abstract noEvents(Lorg/apache/poi/java/awt/EventQueue;)Z
.end method

.method public abstract removeSourceEvents(Lorg/apache/poi/java/awt/EventQueue;Ljava/lang/Object;Z)V
.end method

.method public abstract setFwDispatcher(Lorg/apache/poi/java/awt/EventQueue;Lorg/apache/poi/sun/awt/FwDispatcher;)V
.end method

.method public abstract wakeup(Lorg/apache/poi/java/awt/EventQueue;Z)V
.end method
