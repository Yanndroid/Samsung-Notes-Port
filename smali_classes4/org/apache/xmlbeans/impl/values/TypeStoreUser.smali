.class public interface abstract Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract attach_store(Lorg/apache/xmlbeans/impl/values/TypeStore;)V
.end method

.method public abstract build_nil()Z
.end method

.method public abstract build_text(Lorg/apache/xmlbeans/impl/values/NamespaceManager;)Ljava/lang/String;
.end method

.method public abstract create_attribute_user(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract create_element_user(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/impl/values/TypeStoreUser;
.end method

.method public abstract disconnect_store()V
.end method

.method public abstract get_attribute_field(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaField;
.end method

.method public abstract get_attribute_type(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract get_attributeflags(Lorg/apache/poi/javax/xml/namespace/QName;)I
.end method

.method public abstract get_default_attribute_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
.end method

.method public abstract get_default_element_text(Lorg/apache/poi/javax/xml/namespace/QName;)Ljava/lang/String;
.end method

.method public abstract get_element_ending_delimiters(Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/QNameSet;
.end method

.method public abstract get_element_type(Lorg/apache/poi/javax/xml/namespace/QName;Lorg/apache/poi/javax/xml/namespace/QName;)Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract get_elementflags(Lorg/apache/poi/javax/xml/namespace/QName;)I
.end method

.method public abstract get_schema_type()Lorg/apache/xmlbeans/SchemaType;
.end method

.method public abstract get_store()Lorg/apache/xmlbeans/impl/values/TypeStore;
.end method

.method public abstract invalidate_element_order()V
.end method

.method public abstract invalidate_nilvalue()V
.end method

.method public abstract invalidate_value()V
.end method

.method public abstract is_child_element_order_sensitive()Z
.end method

.method public abstract new_visitor()Lorg/apache/xmlbeans/impl/values/TypeStoreVisitor;
.end method

.method public abstract uses_invalidate_value()Z
.end method

.method public abstract validate_now()V
.end method
