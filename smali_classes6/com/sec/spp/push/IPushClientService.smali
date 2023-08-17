.class public interface abstract Lcom/sec/spp/push/IPushClientService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/spp/push/IPushClientService$Stub;
    }
.end annotation


# virtual methods
.method public abstract ackNotification(Ljava/lang/String;)V
.end method

.method public abstract deregistration(Ljava/lang/String;)V
.end method

.method public abstract getRegId(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getRegisteredAppIDs()[Ljava/lang/String;
.end method

.method public abstract isPushAvailable()Z
.end method

.method public abstract registration(Ljava/lang/String;Ljava/lang/String;)V
.end method
