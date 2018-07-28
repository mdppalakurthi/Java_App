package com.javawebtutor.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlType;

@Entity
@Table(name="user_details")
@XmlRootElement(name = "user")
@XmlType(propOrder={"label","value"})
public class UserGraphSub{
	@Id
	@Column(name = "firstName")
    private String label;
	@Column(name = "submissions")
	private int value;
    
    public UserGraphSub() {
    }

    
    public UserGraphSub(String label, int value) {
        this.label = label;
        this.value = value;
     }

    @XmlElement
    public String getLabel() {
        return label;
    }

    public void setLable(String label) {
        this.label = label;
    }


    @XmlElement
	public int getValue() {
		return value;
	}


	public void setValue(int value) {
		this.value = value;
	}
       
}
